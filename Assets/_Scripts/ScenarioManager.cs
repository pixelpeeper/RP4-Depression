using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScenarioManager : MonoBehaviour
{
    public static ScenarioManager instance;

    [HideInInspector]
    public DialogueScript currentScript = null;

    [SerializeField]
    private GameObject nextDialogueButton;

    [SerializeField]
    private GameObject choiceButton1;
    [SerializeField]
    private GameObject choiceButton2;

    [SerializeField]
    private BlurBackground blurBackground;

    void Awake()
    {
        instance = this;
    }

    public void StartNewDialogueScript(DialogueScript newScript)
    {
        NPCdialogueManager.instance.ResetDialogue();

        this.currentScript = newScript;
        this.currentScript.lineIndex = 0;
        this.nextDialogueButton.SetActive(true);
        this.choiceButton1.SetActive(false);
        this.choiceButton2.SetActive(false);
        this.ProgressDialogueScript();
    }

    public void ProgressDialogueScript()
    {
        DialogueLine nextLine = this.currentScript.GetNextDialogueLine();

        if (nextLine == null)
        {
            if (this.currentScript.scriptChoices.Count != 0)
            {
                this.PromptChoice();
            }
            else
            {
                this.EndScenario();
            }
            return;
        }

        switch (nextLine.speaker)
        {
            case DialogueSpeaker.Narrator:
                TextManager.instance.ChangeText(nextLine.dialogueText);
                break;
            case DialogueSpeaker.NPC:
                NPCdialogueManager.instance.AddDialogue(nextLine.dialogueText);
                break;
            default:
                Debug.LogError("Unknown dialogue speaker");
                break;
        }
    }

    private void PromptChoice()
    {
        Debug.LogError("CHOICE TIME");

        this.nextDialogueButton.SetActive(false);

        this.choiceButton1.GetComponent<ChoiceButton>().buttonChoice = this.currentScript.scriptChoices[0];
        this.choiceButton2.GetComponent<ChoiceButton>().buttonChoice = this.currentScript.scriptChoices[1];

        this.choiceButton1.SetActive(true);
        this.choiceButton2.SetActive(true);
    }

    private void EndScenario()
    {
        this.currentScript = null;
        this.nextDialogueButton.SetActive(false);
        NPCdialogueManager.instance.ResetDialogue();

        TextManager.instance.HideBlock();

        this.blurBackground.EndBlur();

        DragRotation.instance.currentlyActive = true;
    }
}
