using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCStatusManager : MonoBehaviour
{
    public static NPCStatusManager instance;

    public float currentNPCStatus = 0.5f;
    private float failureThreshold = 0.2f;

    public int npcStatus = 0;
    FadeColor npcFadeColor;

    public delegate void OnFailure();
    public OnFailure playerFailed;

    // Start is called before the first frame update
    void Awake()
    {
        instance = this;
    }

    public void DecreaseNPCStatus(float decreaseAmount)
    {
        this.currentNPCStatus -= decreaseAmount;

        if (decreaseAmount > 0)
        {
            npcStatus--;
            if (npcStatus < 0) npcStatus = 0;

            StartCoroutine(FindObjectOfType<FadeColor>().NPCfading(npcStatus));
        }
    }

    public void IncreaseNPCStatus(float increaseAmount)
    {
        this.currentNPCStatus += increaseAmount;

        if (this.currentNPCStatus > 1.0f)
        {
            this.currentNPCStatus = 1.0f;
        }

        if (increaseAmount > 0)
        {
            npcStatus++;
            if (npcStatus > 5) npcStatus = 5;

            StartCoroutine(FindObjectOfType<FadeColor>().NPCfading(npcStatus));
        }
    }

    public bool CheckForFailure()
    {
        if (this.currentNPCStatus <= this.failureThreshold)
        {
            return true;
            /*if (this.playerFailed != null)
            {
                this.playerFailed();
                return true;
            }
            */
        }

        return false;
    }
}
