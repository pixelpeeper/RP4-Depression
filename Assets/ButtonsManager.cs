using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ButtonsManager : MonoBehaviour
{
    public GameObject Button;
    public Text firstOption;
    public Text secondOption;

    BlurBackground blurBackground;
    // Start is called before the first frame update
    void Start()
    {
        blurBackground = FindObjectOfType<BlurBackground>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void SetButtons(string s1, string s2)
    {
        if (!blurBackground.isBlur)
            blurBackground.StartBlur();

        Button.SetActive(true);
        firstOption.text = s1;
        secondOption.text = s2;

    }

    public void firstOptionClicked()
    {
        firstOption.text = "";
        secondOption.text = "";
        Button.SetActive(false);

        if (blurBackground.isBlur)
            blurBackground.EndBlur();
    }

    public void secondOptionClicked()
    {
        firstOption.text = "";
        secondOption.text = "";
        Button.SetActive(false);

        
        if (blurBackground.isBlur)
            blurBackground.EndBlur();
    }
}
