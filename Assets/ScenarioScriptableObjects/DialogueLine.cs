using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum DialogueSpeaker { Narrator, NPC }

[CreateAssetMenu(fileName = "New Dialogue Line", menuName = "ScenarioObject/DialogueLine")]
public class DialogueLine : ScriptableObject
{
    public DialogueSpeaker speaker;

    public string dialogueText;
}
