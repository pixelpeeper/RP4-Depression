using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum DialogueSpeaker { Narrator, NPC, Player }

[CreateAssetMenu(fileName = "New Dialogue Line", menuName = "ScenarioObject/DialogueLine")]
public class DialogueLine : ScriptableObject
{
    public DialogueSpeaker speaker;

    public string dialogueText;

    [SerializeField]
    public AudioClip narrationLine;

    public void PlayNarration()
    {
        AudioSource mainAudioSource = Camera.main.gameObject.GetComponent<AudioSource>();
        mainAudioSource.clip = narrationLine;
        mainAudioSource.Play();
    }
}
