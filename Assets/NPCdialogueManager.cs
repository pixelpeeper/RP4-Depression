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
    float height = 85;

    [SerializeField]
    int interpolationFramesCount = 500;

    float moveSpeed = 15f;

    Vector3 targetVector;
    Coroutine currentCoroutine;

    private void Awake()
    {
        instance = this;
    }

    // Start is called before the first frame update
    void Start()
    {
        blurBackground = FindObjectOfType<BlurBackground>();

        originPos = roll.localPosition;

        height = dialoguePrefab.GetComponent<RectTransform>().rect.height;

        for(int i = 0; i < dialogueCount; i++)
        {
            GameObject dialogueBlock = Instantiate(dialoguePrefab, roll);
            dialogueBlock.transform.localPosition = new Vector3(0, 1272 - i*height, 0);//-46
            dialogueBlockList.Add(dialogueBlock);
        }

        this.npc.SetActive(false);
    }

    public void AddDialogue(string s)
    {
        if (!blurBackground.isBlur)
            blurBackground.StartBlur();

        isButtonClick = false;
        Debug.Log(s);
        Debug.Log(count);
        dialogueBlockList[count].GetComponentInChildren<Text>().text = s;
        count++;
        npc.SetActive(true);

        if (currentCoroutine == null)
        {
            currentCoroutine = StartCoroutine(MoveDialogue());
        }
        else
        {
            StopCoroutine(currentCoroutine);
            roll.localPosition = targetVector;
            currentCoroutine = StartCoroutine(MoveDialogue());
        }
    }

    IEnumerator MoveDialogue()
    {
        float targetY = roll.localPosition.y + height;
        targetVector = new Vector3(0, targetY, 0);
        while(Mathf.Abs(roll.localPosition.y - targetY) > 0.1f)
        {
            roll.localPosition = Vector3.Lerp(roll.localPosition, targetVector, this.moveSpeed * Time.fixedDeltaTime);
            yield return null;
        }

        roll.localPosition = targetVector;

        currentCoroutine = null;
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
