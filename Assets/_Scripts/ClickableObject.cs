using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClickableObject : MonoBehaviour
{
    private MeshRenderer currentRenderer;

    private Material interactMaterial1;
    private Material interactMaterial2;

    public virtual void Interact()
    {
        if (currentRenderer.material.name.Contains("Green"))
        {
            currentRenderer.material = interactMaterial2;
        }
        else
        {
            currentRenderer.material = interactMaterial1;
        }

    }
}
