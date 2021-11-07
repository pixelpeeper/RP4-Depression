using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCStatusManager : MonoBehaviour
{
    public static NPCStatusManager instance;

    public float currentNPCStatus = 0.5f;
    private float failureThreshold = 0.25f;

    int npcStatus = 0;
    public FadeColor npcFadeColor;

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

        npcStatus--;
        if (npcStatus < 0) npcStatus = 0;

        StartCoroutine(npcFadeColor.NPCfading(npcStatus));

    }

    public void IncreaseNPCStatus(float increaseAmount)
    {
        this.currentNPCStatus += increaseAmount;

        if (this.currentNPCStatus > 1.0f)
        {
            this.currentNPCStatus = 1.0f;
        }

        npcStatus++;
        if (npcStatus > 6) npcStatus = 6;

        StartCoroutine(npcFadeColor.NPCfading(npcStatus));
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
