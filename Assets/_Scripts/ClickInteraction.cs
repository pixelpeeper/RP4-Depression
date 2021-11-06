using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClickInteraction : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            Ray mouseRay = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            if (Physics.Raycast(mouseRay, out hit))
            {
                if (hit.collider.gameObject.tag == "Interactable")
                {
                    ClickableObject clickedObject = hit.collider.gameObject.GetComponent<ClickableObject>();
                    if (clickedObject != null)
                    {
                        clickedObject.Interact();
                    }
                }
            }
        }
    }
}
