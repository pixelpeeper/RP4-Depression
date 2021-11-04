using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ButtonsManager : MonoBehaviour
{
    public GameObject Button;
    public Text firstOption;
    public Text secondOption;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void SetButtons(string s1, string s2)
    {
        Button.SetActive(true);
        firstOption.text = s1;
        secondOption.text = s2;

    }

    public void firstOptionClicked()
    {
        firstOption.text = "";
        secondOption.text = "";
        Button.SetActive(false);
        Debug.Log("first");
    }

    public void secondOptionClicked()
    {
        firstOption.text = "";
        secondOption.text = "";
        Button.SetActive(false);
        Debug.Log("second");
    }
}
