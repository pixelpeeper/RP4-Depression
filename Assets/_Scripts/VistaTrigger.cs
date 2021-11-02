using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VistaTrigger : ClickableObject
{
    public int vistaIndex = 0;

    public override void Interact()
    {
        VistaManager.instance.TriggerVista(this.vistaIndex);
    }
}
