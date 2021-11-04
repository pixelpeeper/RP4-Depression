using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TextManager : MonoBehaviour
{
    public static TextManager instance;
    
    //1 line b:260 n:120
    //2 line b:320 n:190
    //3 line b:380 n:260
    // Start is called before the first frame update
    public GameObject narrativeBlock;
    public RectTransform narrTrans;
    public Text narrative;

    [SerializeField]
    float delayTime = 0.08f;

    int[] backgroundHeight = { 200, 250, 320, 380 };
    int[] narrativeHeight = { 120, 190, 260, 315 };
    int perLength = 67;
    public bool isButtonClick = false;
    string currentString;
    IEnumerator co;

    public void Awake()
    {
        instance = this;
    }

    private void Start()
    {
    }

    public void ChangeText(string s)
    {
        currentString = s;
        isButtonClick = false;
        narrative.text = "";
        narrativeBlock.SetActive(true);
        SetHeight(s);
        co = ShowText(s);
        StartCoroutine(co);
    }

    void SetHeight(string s)
    {
        int lineCount = s.Length / perLength;
        if (s.Length % perLength != 0) lineCount++;

        narrativeBlock.GetComponent<RectTransform>().sizeDelta = new Vector2(narrativeBlock.GetComponent<RectTransform>().rect.width, backgroundHeight[lineCount - 1]);
        narrTrans.sizeDelta = new Vector2(narrTrans.rect.width, narrativeHeight[lineCount - 1]);
    }

    IEnumerator ShowText(string s)
    {
        for(int i = 0; i <= s.Length; i++)
        {
            narrative.text = s.Substring(0, i);
            yield return new WaitForSeconds(delayTime);
        }
    }

    
    public void ButtonClicked()
    {
        if(narrative.text != currentString)
        {
            StopCoroutine(co);
            narrative.text = currentString;
        }
        else
        {
            isButtonClick = true;
            narrative.text = "";
            narrativeBlock.SetActive(false);

        }
    }
}
