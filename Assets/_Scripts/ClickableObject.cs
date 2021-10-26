using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClickableObject : MonoBehaviour
{
    public MeshRenderer currentRenderer;

    public Material interactMaterial1;
    public Material interactMaterial2;

    public void Interact()
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
