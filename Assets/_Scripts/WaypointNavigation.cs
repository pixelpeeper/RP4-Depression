using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaypointNavigation : MonoBehaviour
{
    private Coroutine moveCoroutine;

    private float moveSpeed = 10f;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            if (Physics.Raycast(mouseRay, out hit))
            {
                if (hit.collider.gameObject.tag == "Waypoint")
                {
                    if (this.moveCoroutine == null)
                    {
                        Vector3 targetPosition = new Vector3(hit.collider.gameObject.transform.position.x, this.transform.position.y, hit.collider.gameObject.transform.position.z);
                        this.moveCoroutine = StartCoroutine(this.MoveCameraToPosition(targetPosition));
                    }
                }
            }
        }
    }

    private IEnumerator MoveCameraToPosition(Vector3 targetPosition)
    {
        Vector2 cameraHolderXZPlanePosition = new Vector2(this.transform.position.x, this.transform.position.z);
        Vector2 targetXZPlanePosition = new Vector2(targetPosition.x, targetPosition.z);
        
        while (Vector2.Distance(cameraHolderXZPlanePosition, targetXZPlanePosition) > 0.01f)
        {
            this.transform.position = Vector3.Lerp(this.transform.position, targetPosition, this.moveSpeed * Time.deltaTime);
            cameraHolderXZPlanePosition = new Vector2(this.transform.position.x, this.transform.position.z);
            yield return null;
        }

        this.transform.position = targetPosition;
        this.moveCoroutine = null;
    }
}
