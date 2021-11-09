using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class TitleScreen : MonoBehaviour
{
    [SerializeField]
    private Image fadePanel;

    private Coroutine fadeCoroutine;

    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(this.FadeIn());
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonUp(0))
        {
            if (this.fadeCoroutine == null)
            {
                this.StopAllCoroutines();
                this.fadeCoroutine = StartCoroutine(this.TransitionToMainScene());
            }
        }
    }

    private IEnumerator FadeIn()
    {
        while (this.fadePanel.color.a > 0.01f)
        {
            float interpolationAlpha = Mathf.Lerp(this.fadePanel.color.a, 0.0f, 3f * Time.fixedDeltaTime);
            this.fadePanel.color = new Color(this.fadePanel.color.r, this.fadePanel.color.g, this.fadePanel.color.b, interpolationAlpha);
            yield return new WaitForFixedUpdate();
        }

        this.fadePanel.color = new Color(this.fadePanel.color.r, this.fadePanel.color.g, this.fadePanel.color.b, 0.0f);
    }

    private IEnumerator TransitionToMainScene()
    {
        while (this.fadePanel.color.a < 0.99f)
        {
            float interpolationAlpha = Mathf.Lerp(this.fadePanel.color.a, 1.0f, 3f * Time.fixedDeltaTime);
            this.fadePanel.color = new Color(this.fadePanel.color.r, this.fadePanel.color.g, this.fadePanel.color.b, interpolationAlpha);
            yield return new WaitForFixedUpdate();
        }

        this.fadePanel.color = new Color(this.fadePanel.color.r, this.fadePanel.color.g, this.fadePanel.color.b, 1.0f);

        SceneManager.LoadScene(1);
    }
}
