using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPCdialogueManager : MonoBehaviour
{
    public static NPCdialogueManager instance;
    
    public bool isButtonClick = false;
    public GameObject dialoguePrefab;
    public GameObject npc;
    //public GameObject mask;
    List<GameObject> dialogueBlockList = new List<GameObject>();
    public Transform roll;
    Vector3 originPos;
    int count = 0;
    BlurBackground blurBackground;

    [SerializeField]
    int dialogueCount = 30;
    [SerializeField]
    int height = 85;

    [SerializeField]
    int interpolationFramesCount = 500;

    private void Awake()
    {
        instance = this;
    }

    // Start is called before the first frame update
    void Start()
    {
        blurBackground = FindObjectOfType<BlurBackground>();

        originPos = roll.localPosition;

        for(int i = 0; i < dialogueCount; i++)
        {
            GameObject dialogueBlock = Instantiate(dialoguePrefab, roll);
            dialogueBlock.transform.localPosition = new Vector3(0, 1272 - i*height, 0);//-46
            dialogueBlockList.Add(dialogueBlock);
        }

        this.npc.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void AddDialogue(string s)
    {
        if (!blurBackground.isBlur)
            blurBackground.StartBlur();

        isButtonClick = false;
        Debug.Log(s);
        /*
        GameObject dialogueBlock = Instantiate(dialoguePrefab, roll);
        dialogueBlock.transform.localPosition = new Vector3(0, -180, 0);
        dialogueBlockList.Add(dialogueBlock);
        */
        Debug.Log(count);
        dialogueBlockList[count].GetComponentInChildren<Text>().text = s;
        count++;
        npc.SetActive(true);
        StartCoroutine(MoveDialogue());

    }

    IEnumerator MoveDialogue()
    {
        interpolationFramesCount = 120; // Number of frames to completely interpolate between the 2 positions
        int elapsedFrames = 0;

        float targetY = roll.localPosition.y + height;
        Vector3 tartgetVector = new Vector3(0, targetY, 0);
        while(elapsedFrames < interpolationFramesCount || roll.localPosition.y != targetY)
        {
            float interpolationRatio = (float)elapsedFrames / interpolationFramesCount;

            roll.localPosition = Vector3.Lerp(roll.localPosition, tartgetVector, interpolationRatio);

            if (elapsedFrames >= interpolationFramesCount) {
                elapsedFrames = interpolationFramesCount;
                roll.localPosition = tartgetVector;
            } 
            else
            {
                elapsedFrames++;
                //elapsedFrames = (elapsedFrames + 1) % (interpolationFramesCount + 1);
            }
            Debug.Log("frame:" + elapsedFrames);
            yield return null;
        }
    }

    public void ResetDialogue()
    {
        Debug.Log("reset dialogue");
        roll.localPosition = originPos;
        count = 0;
        foreach(var l in dialogueBlockList)
        {
            l.GetComponentInChildren<Text>().text = "";
        }
        npc.SetActive(false);
    }

    public void ButtonClicked()
    {
        isButtonClick = true;
        

        /*
        if (blurBackground.isBlur)
            blurBackground.EndBlur();*/
    }
}
