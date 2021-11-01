using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TestNPCStatus : MonoBehaviour
{
    public GameObject gameOverText;

    public Text npcStatus;

    // Start is called before the first frame update
    void Start()
    {
        NPCStatusManager.instance.playerFailed += this.DisplayGameOver;    
    }

    private void Update()
    {
        this.npcStatus.text = "NPC Status: " + NPCStatusManager.instance.currentNPCStatus;
    }

    public void LargeDecrease()
    {
        float changeAmount = Random.Range(0.3f, 0.5f);

        NPCStatusManager.instance.DecreaseNPCStatus(changeAmount);
    }

    public void SmallDecrease()
    {
        float changeAmount = Random.Range(0.1f, 0.2f);

        NPCStatusManager.instance.DecreaseNPCStatus(changeAmount);
    }

    public void SmallIncrease()
    {
        float changeAmount = Random.Range(0.1f, 0.2f);

        NPCStatusManager.instance.IncreaseNPCStatus(changeAmount);
    }

    public void LargeIncrease()
    {
        float changeAmount = Random.Range(0.3f, 0.5f);

        NPCStatusManager.instance.IncreaseNPCStatus(changeAmount);
    }

    private void DisplayGameOver()
    {
        Debug.LogError("GAME OVER");
        this.gameOverText.SetActive(true);
    }
}
