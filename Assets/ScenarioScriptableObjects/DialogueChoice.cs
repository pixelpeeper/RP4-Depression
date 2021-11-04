using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum NPCImpact { Positive, Negative }

[CreateAssetMenu(fileName = "New Dialogue Choice", menuName = "ScenarioObject/DialogueChoice")]
public class DialogueChoice : ScriptableObject
{
    public string choiceName;
    public NPCImpact npcImpact;
    public float npcStatusImpactValue;
    public DialogueScript correspondingScript;
}
