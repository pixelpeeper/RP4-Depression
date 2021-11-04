using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChoiceButton : MonoBehaviour
{
    [HideInInspector]
    public DialogueChoice buttonChoice;
    public Text buttonText;

    // Update is called once per frame
    void Update()
    {
        if (this.buttonChoice != null)
        {
            this.buttonText.text = this.buttonChoice.choiceName;
        }
    }

    public void ChoiceSelected()
    {
        switch (buttonChoice.npcImpact)
        {
            case NPCImpact.Positive:
                NPCStatusManager.instance.IncreaseNPCStatus(buttonChoice.npcStatusImpactValue);
                break;
            case NPCImpact.Negative:
                NPCStatusManager.instance.DecreaseNPCStatus(buttonChoice.npcStatusImpactValue);
                break;
            default:
                Debug.LogError("Unknown NPC Impact");
                break;
        }
        
        ScenarioManager.instance.StartNewDialogueScript(buttonChoice.correspondingScript);
    }
}
