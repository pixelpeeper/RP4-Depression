using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ZoomInZoomOut : MonoBehaviour
{

	Camera mainCamera;
	Transform tf;

	float touchesPrevPosDifference, touchesCurPosDifference, zoomModifier;

	Vector2 firstTouchPrevPos, secondTouchPrevPos;
	Vector3 targetPos = new Vector3(0,0,10000);

	public int interpolationFramesCount = 50; // Number of frames to completely interpolate between the 2 positions
	int elapsedFrames = 0;
	float minZoom;
	float maxZoom;
	float offset = 2f;

	[SerializeField]
	float zoomModifierSpeed = 0.05f;

	[SerializeField]
	Text text;

	// Use this for initialization
	void Start()
	{
		mainCamera = GetComponent<Camera>();
		tf = GetComponent<Transform>();
		minZoom = tf.position.z - offset;
		maxZoom = tf.position.z + offset;
	}

	// Update is called once per frame
	void Update()
	{

		if (Input.touchCount == 2)
		{
			Touch firstTouch = Input.GetTouch(0);
			Touch secondTouch = Input.GetTouch(1);

			firstTouchPrevPos = firstTouch.position - firstTouch.deltaPosition;
			secondTouchPrevPos = secondTouch.position - secondTouch.deltaPosition;

			touchesPrevPosDifference = (firstTouchPrevPos - secondTouchPrevPos).magnitude;
			touchesCurPosDifference = (firstTouch.position - secondTouch.position).magnitude;

			zoomModifier = (firstTouch.deltaPosition - secondTouch.deltaPosition).magnitude * zoomModifierSpeed;

			if (touchesPrevPosDifference > touchesCurPosDifference)
            {
				//mainCamera.orthographicSize += zoomModifier;
                targetPos = tf.position - new Vector3(0,0, zoomModifier);

			}

			if (touchesPrevPosDifference < touchesCurPosDifference)
            {
				targetPos = tf.position + new Vector3(0, 0, zoomModifier);
				//mainCamera.orthographicSize -= zoomModifier;
			}

		}

		float interpolationRatio = (float)elapsedFrames / interpolationFramesCount;

		//Vector3 interpolatedPosition = Vector3.Lerp(Vector3.up, Vector3.forward, interpolationRatio);

		

		if (Input.GetKeyDown(KeyCode.UpArrow))
        {
			targetPos = tf.position + new Vector3(0,0, zoomModifierSpeed);
			

		}
		if (Input.GetKeyDown(KeyCode.DownArrow))
		{
			targetPos = tf.position - new Vector3(0, 0, zoomModifierSpeed);
			
		}

		if (targetPos.z != 10000)
		{
			if ( tf.position.z < targetPos.z)
			{
				tf.position = Vector3.Lerp(tf.position, targetPos, interpolationRatio);
			}
			else if (tf.position.z > targetPos.z)
			{
				tf.position = Vector3.Lerp(targetPos, tf.position, interpolationRatio);


			}
		}



		elapsedFrames = (elapsedFrames + 1) % (interpolationFramesCount + 1);  // reset elapsedFrames to zero after it reached (interpolationFramesCount + 1)

		tf.position = new Vector3(tf.position.x, tf.position.y, Mathf.Clamp(tf.position.z, minZoom, maxZoom));
		//mainCamera.orthographicSize = Mathf.Clamp(mainCamera.orthographicSize, 2f, 10f);
		text.text = "Camera z DEPTH:  " + tf.position.z;

	}
}