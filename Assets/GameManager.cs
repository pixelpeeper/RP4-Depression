using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    string[] SceneOne = { "Other visual scripting solutions use delegates or reflection calls for every single node in the graph. Even simple behaviors need many nodes. This quickly adds up to a heavy hit on performance!Even simple behaviors need many nodes.", "next", "end" };
    string[] SceneTwo = { "Activates/Deactivates the GameObject, depending on the given true or false value. ", "next...", "Deactivating a GameObject disables each component, including attached renderers, colliders, rigidbodies, and scripts. " };

    string[] d1 = { "hello!", "I am your friend.", "How are you?", "This is end of the day progress.", ":)"};

    TextManager textManager;
    NPCdialogueManager npcDialogueManager;
    // Start is called before the first frame update
    void Start()
    {
        npcDialogueManager = FindObjectOfType<NPCdialogueManager>();
        textManager = FindObjectOfType<TextManager>();
        //StartCoroutine(NarrativeManager());
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            StartCoroutine(NarrativeManager(SceneOne));
        }

        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            StartCoroutine(NarrativeManager(SceneTwo));
        }

        if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            StartCoroutine(NPCdialogue(d1));
        }

    }

    IEnumerator NPCdialogue(string[] dialogue)
    {
        int i = 0;
        while (i < dialogue.Length)
        {

            npcDialogueManager.AddDialogue(dialogue[i]);
            i++;
            while (!npcDialogueManager.isButtonClick) yield return null;

        }
    }

    IEnumerator NarrativeManager(string[] narrative)
    {
        int i = 0;
        while (i < narrative.Length)
        {
            
            textManager.ChangeText(narrative[i]);
            i++;
            while (!textManager.isButtonClick) yield return null;
            
        }


    }
}
