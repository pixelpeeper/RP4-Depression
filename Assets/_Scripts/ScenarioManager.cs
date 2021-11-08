using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.SceneManagement;

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

    [SerializeField]
    private Image fadePanel;
    private float fadeSpeed = 2.5f;
    private float textFadeSpeed = 5f;

    [SerializeField]
    private string goodMessage = "Hey, you did a good job!  Here's a cookie for your efforts.  Yaaaaay!";
    [SerializeField]
    private string badMessage = "Wow, you really bungled that one.  I suggest you try that again...";

    [SerializeField]
    private GameObject endingCanvas;
    [SerializeField]
    private TextMeshProUGUI finalMessage;
    [SerializeField]
    private TextMeshProUGUI resourcesTitle;
    [SerializeField]
    private GameObject externalResourcesHolder;
    [SerializeField]
    private Button tapToRetryButton;
    [SerializeField]
    private TextMeshProUGUI tapToRetryMessage;
    
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
                NPCdialogueManager.instance.AddDialogue(DialogueSpeaker.NPC, nextLine.dialogueText);
                nextLine.PlayNarration();
                break;
            case DialogueSpeaker.Player:
                NPCdialogueManager.instance.AddDialogue(DialogueSpeaker.Player, nextLine.dialogueText);
                break;
            default:
                Debug.LogError("Unknown dialogue speaker");
                break;
        }
    }

    private void PromptChoice()
    {
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

        if (NPCStatusManager.instance.CheckForFailure())
        {
            StartCoroutine(this.BeginEndgameSequence(false));
        }
    }

    private IEnumerator BeginEndgameSequence(bool playerSucceeded)
    {
        this.endingCanvas.SetActive(true);

        while (this.fadePanel.color.a < 0.99f)
        {
            float interpolationAlpha = Mathf.Lerp(this.fadePanel.color.a, 1.0f, this.fadeSpeed * Time.fixedDeltaTime);
            this.fadePanel.color = new Color(this.fadePanel.color.r, this.fadePanel.color.g, this.fadePanel.color.b, interpolationAlpha);
            yield return new WaitForFixedUpdate();
        }

        this.fadePanel.color = new Color(this.fadePanel.color.r, this.fadePanel.color.g, this.fadePanel.color.b, 1.0f);

        if (playerSucceeded == true)
        {
            this.finalMessage.text = this.goodMessage;
        }
        else
        {
            this.finalMessage.text = this.badMessage;
        }

        yield return new WaitForSeconds(1.0f);

        while (this.finalMessage.color.a < 0.99f)
        {
            float interpolationAlpha = Mathf.Lerp(this.finalMessage.color.a, 1.0f, this.textFadeSpeed * Time.fixedDeltaTime);
            this.finalMessage.color = new Color(this.finalMessage.color.r, this.finalMessage.color.g, this.finalMessage.color.b, interpolationAlpha);
            yield return new WaitForFixedUpdate();
        }

        yield return new WaitForSeconds(1f);

        TextMeshProUGUI[] resourcesList = this.externalResourcesHolder.GetComponentsInChildren<TextMeshProUGUI>();
        Button[] resourcesButtons = this.externalResourcesHolder.GetComponentsInChildren<Button>(true);

        while (this.resourcesTitle.color.a < 0.99f)
        {
            float interpolationAlpha = Mathf.Lerp(this.resourcesTitle.color.a, 1.0f, this.textFadeSpeed * Time.fixedDeltaTime);
            this.resourcesTitle.color = new Color(this.resourcesTitle.color.r, this.resourcesTitle.color.g, this.resourcesTitle.color.b, interpolationAlpha);

            for (int i = 0; i < resourcesList.Length; i++)
            {
                resourcesList[i].color = this.resourcesTitle.color;
            }

            yield return new WaitForFixedUpdate();
        }

        for (int i = 0; i < resourcesButtons.Length; i++)
        {
            resourcesButtons[i].enabled = true;
        }

        yield return new WaitForSeconds(1.0f);

        while (this.tapToRetryMessage.color.a < 0.99f)
        {
            float interpolationAlpha = Mathf.Lerp(this.tapToRetryMessage.color.a, 1.0f, this.textFadeSpeed * Time.fixedDeltaTime);
            this.tapToRetryMessage.color = new Color(this.tapToRetryMessage.color.r, this.tapToRetryMessage.color.g, this.tapToRetryMessage.color.b, interpolationAlpha);
            yield return new WaitForFixedUpdate();
        }

        this.tapToRetryButton.enabled = true;
    }

    public void OpenLink(TextMeshProUGUI textLink)
    {
        Application.OpenURL(textLink.text);
    }

    public void RestartGame()
    {
        SceneManager.LoadScene(0);
    }
}
