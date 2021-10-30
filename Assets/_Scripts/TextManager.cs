using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TextManager : MonoBehaviour
{
    //1 line b:260 n:120
    //2 line b:320 n:190
    //3 line b:380 n:260
    // Start is called before the first frame update
    public RectTransform backgroundTrans;
    public RectTransform narrTrans;
    public Text narrative;

    [SerializeField]
    float delayTime = 0.1f;

    int[] backgroundHeight = { 260, 320, 380 };
    int[] narrativeHeight = { 120, 190, 260 };
    int perLength = 67;

        private void Start()
    {
        ChangeText("This is a simple test. I hope it works well for the first time cause I'm pretty tired and I want to go to sleep.");
    }

    public void ChangeText(string s)
    {
        narrative.text = "";

        SetHeight(s);
        StartCoroutine(ShowText(s));
    }

    void SetHeight(string s)
    {
        int lineCount = s.Length / perLength;
        if (s.Length % perLength != 0) lineCount++;

        backgroundTrans.sizeDelta = new Vector2(backgroundTrans.rect.width, backgroundHeight[lineCount - 1]);
        narrTrans.sizeDelta = new Vector2(narrTrans.rect.width, narrativeHeight[lineCount - 1]);
    }

    IEnumerator ShowText(string s)
    {
        for(int i = 0; i < s.Length; i++)
        {
            narrative.text = s.Substring(0, i);
            yield return new WaitForSeconds(delayTime);
        }
    }

    public void ClearText()
    {
        narrative.text = "";
    }
}
