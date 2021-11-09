using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VistaTrigger : ClickableObject
{
    public int vistaIndex = 0;

    [SerializeField]
    private DialogueScript startingScript;

    [SerializeField]
    private ObjectHighligher objectHighlighter;

    [SerializeField]
    private BoxCollider vistaCollider;

    private void Update()
    {
        if (ScenarioManager.instance.scenarioCount == vistaIndex && this.objectHighlighter.selected == false)
        {
            this.objectHighlighter.DisplayHighlight();
        }
        else
        {
            this.objectHighlighter.HideHighlight();
        }
    }


    public override void Interact()
    {
        if(ScenarioManager.instance.scenarioCount == vistaIndex)
        {
            VistaManager.instance.TriggerVista(this.vistaIndex, startingScript);
            this.vistaCollider.enabled = false;
            this.objectHighlighter.selected = true;
        }
        
    }
}
