using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class IntroSequence : MonoBehaviour
{
    [SerializeField]
    private DialogueScript introScript;

    [SerializeField]
    private GameObject endingCanvas;
    [SerializeField]
    private Image fadePanel;

    private float fadeSpeed = 2.5f;

    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(this.FadeIntoGame());

        ScenarioManager.instance.scenarioEnded += this.SetupInitialGameState;
    }

    private IEnumerator FadeIntoGame()
    {
        this.endingCanvas.SetActive(true);

        while (this.fadePanel.color.a > 0.01f)
        {
            float interpolationAlpha = Mathf.Lerp(this.fadePanel.color.a, 0.0f, this.fadeSpeed * Time.fixedDeltaTime);
            this.fadePanel.color = new Color(this.fadePanel.color.r, this.fadePanel.color.g, this.fadePanel.color.b, interpolationAlpha);
            yield return new WaitForFixedUpdate();
        }

        this.fadePanel.color = new Color(this.fadePanel.color.r, this.fadePanel.color.g, this.fadePanel.color.b, 0.0f);

        this.endingCanvas.SetActive(false);

        VistaManager.instance.TriggerVista(3, introScript);
    }

    private void SetupInitialGameState()
    {
        ScenarioManager.instance.scenarioEnded -= this.SetupInitialGameState;
        ScenarioManager.instance.SetupInitialGameState();
    }
}
