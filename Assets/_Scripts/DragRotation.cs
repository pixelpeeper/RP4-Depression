using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public enum RotationMode { Continuous, Discrete };

public class DragRotation : MonoBehaviour
{
    public Camera rotatingCamera;

    public RotationMode rotationMode = RotationMode.Continuous;

    private float maxRotationSpeed = 200f;

    [SerializeField]
    private TextMeshProUGUI buttonText;

    //Continuous Rotation variables
    private float maxDragDistance = 0.2f;
    private float dragUnit = 0.1f;
    private float rotationAnglePerDragUnit = 10f;

    //DiscreteRotationVariables
    private float minDragDistanceToTrigger = 0.3f;
    private float discreteRotationSpeed = 7f;
    private float currentWallRotation = 0;

    private Coroutine rotationCoroutine = null;

    public void ToggleRotationMode()
    {
        if (this.rotationMode == RotationMode.Continuous)
        {
            this.rotationMode = RotationMode.Discrete;
            this.rotatingCamera.transform.rotation = Quaternion.Euler(0f, 0f, 0f);
            this.currentWallRotation = 0;
            this.buttonText.text = "Camera Mode: Discrete";
        }
        else
        {
            this.rotationMode = RotationMode.Continuous;
            this.buttonText.text = "Camera Mode: Continuous";
        }
    }

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (this.rotationMode == RotationMode.Continuous)
        {
            this.ContinuousUpdate();
        }
        else if (this.rotationMode == RotationMode.Discrete)
        {
            this.DiscreteUpdate();
        }
    }

    private void ContinuousUpdate()
    {
        if (Input.GetMouseButtonDown(0) || Input.touchCount > 0)
        {
            if (this.rotationCoroutine == null)
            {
                this.rotationCoroutine = StartCoroutine(this.ContinuousRotation());
            }
        }
    }

    private void DiscreteUpdate()
    {
        if (Input.GetMouseButtonDown(0) || Input.touchCount > 0)
        {
            if (this.rotationCoroutine == null)
            {
                this.rotationCoroutine = StartCoroutine(this.DiscreteRotation());
            }
        }
    }

    private IEnumerator ContinuousRotation()
    {
        //For mouse simulation in Editor
        Vector2 originalMouseViewportPosition = Camera.main.ScreenToViewportPoint(
            new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0f));
        while (Input.GetMouseButton(0))
        {
            Vector2 currentMouseViewportPosition = Camera.main.ScreenToViewportPoint(
            new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0f));

            Vector2 dragDirection = (currentMouseViewportPosition - originalMouseViewportPosition);

            float yAxisRotationUnits = (-dragDirection.x / this.dragUnit) * this.rotationAnglePerDragUnit;
            float xAxisRotationUnits = (dragDirection.y / this.dragUnit) * this.rotationAnglePerDragUnit;

            Vector3 originalEulers = this.rotatingCamera.transform.rotation.eulerAngles;

            this.rotatingCamera.transform.rotation = Quaternion.Euler(originalEulers.x + xAxisRotationUnits, originalEulers.y + yAxisRotationUnits, 0f);

            originalMouseViewportPosition = currentMouseViewportPosition;

            yield return null;
        }

        this.rotationCoroutine = null;
    }

    private IEnumerator DiscreteRotation()
    {
        //For mouse simulation in Editor
        Vector2 originalMouseViewportPosition = Camera.main.ScreenToViewportPoint(
            new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0f));
        while (Input.GetMouseButton(0))
        {
            Vector2 currentMouseViewportPosition = Camera.main.ScreenToViewportPoint(
            new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0f));

            float currentDragDistance = Mathf.Abs(currentMouseViewportPosition.x - originalMouseViewportPosition.x);

            Vector2 dragDirection = (currentMouseViewportPosition - originalMouseViewportPosition).normalized;

            if (currentDragDistance >= this.minDragDistanceToTrigger)
            {
                if (dragDirection.x > 0)
                {
                    this.currentWallRotation -= 90f;
                }
                else
                {
                    this.currentWallRotation += 90f;
                }

                originalMouseViewportPosition = currentMouseViewportPosition;
            }

            //Lerp to target rotation
            while (Mathf.Abs(this.rotatingCamera.transform.rotation.eulerAngles.y - this.currentWallRotation) % 360 > 0.1f)
            {
                this.rotatingCamera.transform.rotation = 
                    Quaternion.RotateTowards(this.rotatingCamera.transform.rotation, 
                    Quaternion.Euler(0f, this.currentWallRotation, 0f), this.discreteRotationSpeed);

                yield return null;
            }

            this.rotatingCamera.transform.rotation = Quaternion.Euler(0f, this.currentWallRotation, 0f);

            yield return null;
        }

        //For finger input on device
        bool rotationTriggered = false;
        while (Input.touchCount > 0 && !rotationTriggered)
        {
            Touch updatedTouch = Input.GetTouch(0);
            Vector2 viewportSpaceStartingPosition = Camera.main.ScreenToViewportPoint(updatedTouch.rawPosition);
            Vector2 viewportSpaceCurrentPosition = Camera.main.ScreenToViewportPoint(updatedTouch.position);

            float currentDragDistance = Mathf.Abs(viewportSpaceCurrentPosition.x - viewportSpaceCurrentPosition.x);

            Vector2 dragDirection = (viewportSpaceCurrentPosition - viewportSpaceStartingPosition).normalized;

            if (currentDragDistance >= this.minDragDistanceToTrigger)
            {
                if (dragDirection.x > 0)
                {
                    this.currentWallRotation -= 90f;
                }
                else
                {
                    this.currentWallRotation += 90f;
                }

                rotationTriggered = true;
            }

            //Lerp to target rotation
            while (Mathf.Abs(this.rotatingCamera.transform.rotation.eulerAngles.y - this.currentWallRotation) % 360 > 0.1f)
            {
                this.rotatingCamera.transform.rotation =
                    Quaternion.RotateTowards(this.rotatingCamera.transform.rotation,
                    Quaternion.Euler(0f, this.currentWallRotation, 0f), this.discreteRotationSpeed);

                yield return null;
            }

            this.rotatingCamera.transform.rotation = Quaternion.Euler(0f, this.currentWallRotation, 0f);

            yield return null;
        }

        this.rotationCoroutine = null;
    }
}
