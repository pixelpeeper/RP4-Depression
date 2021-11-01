using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCStatusManager : MonoBehaviour
{
    public static NPCStatusManager instance;

    public float currentNPCStatus = 0.5f;
    private float failureThreshold = 0.25f;

    public delegate void OnFailure();
    public OnFailure playerFailed;

    // Start is called before the first frame update
    void Start()
    {
        instance = this;
    }


    public void DecreaseNPCStatus(float decreaseAmount)
    {
        this.currentNPCStatus -= decreaseAmount;
        this.CheckForFailure();
    }

    public void IncreaseNPCStatus(float increaseAmount)
    {
        this.currentNPCStatus += increaseAmount;

        if (this.currentNPCStatus > 1.0f)
        {
            this.currentNPCStatus = 1.0f;
        }
    }

    private void CheckForFailure()
    {
        if (this.currentNPCStatus <= this.failureThreshold)
        {
            Debug.LogError("FAILED");
            if (this.playerFailed != null)
            {
                Debug.LogError("Not null");
                this.playerFailed();
            }
        }
    }
}
