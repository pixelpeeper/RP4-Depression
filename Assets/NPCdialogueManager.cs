using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPCdialogueManager : MonoBehaviour
{
    public bool isButtonClick = false;
    public GameObject dialoguePrefab;
    public GameObject mask;
    List<GameObject> dialogueBlockList = new List<GameObject>();
    public Transform roll;
    Vector3 originPos;
    int count = 0;

    [SerializeField]
    int dialogueCount = 30;
    [SerializeField]
    int height = 85;
    // Start is called before the first frame update
    void Start()
    {
        originPos = roll.position;

        for(int i = 0; i < dialogueCount; i++)
        {
            GameObject dialogueBlock = Instantiate(dialoguePrefab, roll);
            dialogueBlock.transform.localPosition = new Vector3(0, 1272 - i*height, 0);//-46
            dialogueBlockList.Add(dialogueBlock);
        }

        mask.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void AddDialogue(string s)
    {
        isButtonClick = false;
        mask.SetActive(true);
        /*
        GameObject dialogueBlock = Instantiate(dialoguePrefab, roll);
        dialogueBlock.transform.localPosition = new Vector3(0, -180, 0);
        dialogueBlockList.Add(dialogueBlock);
        */
        dialogueBlockList[count].GetComponentInChildren<Text>().text = s;
        count++;
        StartCoroutine(MoveDialogue());

    }

    IEnumerator MoveDialogue()
    {
        int interpolationFramesCount = 500; // Number of frames to completely interpolate between the 2 positions
        int elapsedFrames = 0;

        float targetY = roll.localPosition.y + height;
        Vector3 tartgetVector = new Vector3(0, targetY, 0);
        while(elapsedFrames >= interpolationFramesCount || roll.localPosition.y != targetY)
        {
            float interpolationRatio = (float)elapsedFrames / interpolationFramesCount;

            roll.localPosition = Vector3.Lerp(roll.localPosition, tartgetVector, interpolationRatio);

            if (elapsedFrames >= 1000) {
                elapsedFrames = 1000;
                roll.localPosition = tartgetVector;
            } 
            else
            {
                elapsedFrames = (elapsedFrames + 1) % (interpolationFramesCount + 1);
            }
            yield return null;
        }
    }

    public void ResetDialogue()
    {
        roll.position = originPos;
        count = 0;
        foreach(var l in dialogueBlockList)
        {
            l.GetComponentInChildren<Text>().text = "";
        }
    }

    public void ButtonClicked()
    {
        isButtonClick = true;
        mask.SetActive(false);
    }
}
