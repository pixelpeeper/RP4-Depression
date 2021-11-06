using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VistaTrigger : ClickableObject
{
    public int vistaIndex = 0;

    [SerializeField]
    private DialogueScript startingScript;

    public override void Interact()
    {
        VistaManager.instance.TriggerVista(this.vistaIndex, startingScript);
        Destroy(this);
    }
}
