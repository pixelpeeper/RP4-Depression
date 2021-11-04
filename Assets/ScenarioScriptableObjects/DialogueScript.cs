using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Dialogue Script", menuName = "ScenarioObject/DialogueScript")]
public class DialogueScript : ScriptableObject
{
    public List<DialogueLine> scriptLines;
    public List<DialogueChoice> scriptChoices;

    public int lineIndex = 0;

    public DialogueLine GetNextDialogueLine()
    {
        if (lineIndex >= scriptLines.Count)
        {
            return null;
        }
        
        DialogueLine returnedLine = scriptLines[lineIndex];
        lineIndex++;
        return returnedLine;
    }
}
