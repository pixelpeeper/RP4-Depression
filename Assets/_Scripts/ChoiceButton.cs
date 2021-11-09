using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChoiceButton : MonoBehaviour
{
    [HideInInspector]
    public DialogueChoice buttonChoice;
    public Text buttonText;

    [SerializeField]
    private GameObject doorObject;

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

        //Sorry, this is all very bad.  Fix it if we want to expand on it -- JPS
        if (buttonChoice.optionalSoundEffect != null)
        {
            ScenarioManager.instance.optionalChoiceAudio.clip = buttonChoice.optionalSoundEffect;
            ScenarioManager.instance.optionalChoiceAudio.Play();

            this.doorObject.transform.rotation = Quaternion.Euler(0f, -85f, 0f);
        }

        ScenarioManager.instance.StartNewDialogueScript(buttonChoice.correspondingScript);
    }
}
