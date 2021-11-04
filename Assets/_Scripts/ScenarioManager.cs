using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScenarioManager : MonoBehaviour
{
    public static ScenarioManager instance;

    private DialogueScript currentScript;

    void Awake()
    {
        instance = this;
    }

    public void StartNewDialogueScript(DialogueScript newScript)
    {
        this.currentScript = newScript;
        this.currentScript.lineIndex = 0;
        this.ProgressDialogueScript();
    }

    public void ProgressDialogueScript()
    {
        Debug.LogError("Next Dialogue!");

        DialogueLine nextLine = this.currentScript.GetNextDialogueLine();

        if (nextLine == null)
        {
            this.PromptChoice();
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
        Debug.LogError("PROMPT CHOICES");
    }
}
