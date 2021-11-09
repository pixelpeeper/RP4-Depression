using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[Serializable]
public struct VistaSettings
{
    public Vector3 cameraPosition;
    public Vector3 cameraEulerRotation;
    public Vector3 npcPosition;
    public Vector3 npcEulerRotation;
    public GameObject npcPose;
}

public class VistaManager : MonoBehaviour
{
    public static VistaManager instance;

    public List<VistaSettings> gameVistas;

    public float moveSpeed = 5f;
    public float rotationSpeed = 10f;

    public GameObject cameraHolder;
    public GameObject playerCamera;

    private GameObject currentNPCPose;

    private void Awake()
    {
        instance = this;
    }

    public void TriggerVista(int vistaIndex, DialogueScript startingScript = null)
    {
        StartCoroutine(this.SetupVista(this.gameVistas[vistaIndex], startingScript));
    }

    private bool HasCameraReachedVista(VistaSettings targetVista)
    {
        float translationDistance = Vector3.Distance(this.cameraHolder.transform.position, targetVista.cameraPosition);
        float xRotationDistance = Mathf.Abs(this.playerCamera.transform.rotation.eulerAngles.x - targetVista.cameraEulerRotation.x) % 360;
        float yRotationDistance = Mathf.Abs(this.playerCamera.transform.rotation.eulerAngles.y - targetVista.cameraEulerRotation.y) % 360;
        float zRotationDistance = Mathf.Abs(this.playerCamera.transform.rotation.eulerAngles.z - targetVista.cameraEulerRotation.z) % 360;

        return (translationDistance <= 0.01f && xRotationDistance <= 0.01f && yRotationDistance <= 0.01f && zRotationDistance <= 0.01f);
    }

    private IEnumerator SetupVista(VistaSettings targetVista, DialogueScript startingScript = null)
    {
        if (this.currentNPCPose != null)
        {
            Destroy(this.currentNPCPose);
            this.currentNPCPose = null;
        }

        DragRotation.instance.currentlyActive = false;

        this.currentNPCPose = Instantiate(targetVista.npcPose, targetVista.npcPosition, Quaternion.Euler(targetVista.npcEulerRotation)) as GameObject;

        GameObject ChildGameObject1 = this.currentNPCPose.transform.GetChild(0).gameObject;
        FadeColor f = ChildGameObject1.AddComponent<FadeColor>();
        while (!f._material) yield return null;
        f.setNpcColor(FindObjectOfType<NPCStatusManager>().npcStatus);

        while (!HasCameraReachedVista(targetVista))
        {
            this.cameraHolder.transform.position = Vector3.Lerp(this.cameraHolder.transform.position, targetVista.cameraPosition, this.moveSpeed * Time.deltaTime);
            this.playerCamera.transform.rotation = Quaternion.RotateTowards(this.playerCamera.transform.rotation, Quaternion.Euler(targetVista.cameraEulerRotation), this.rotationSpeed);
            yield return null;
        }

        this.cameraHolder.transform.position = targetVista.cameraPosition;
        this.playerCamera.transform.rotation = Quaternion.Euler(targetVista.cameraEulerRotation);

        if (startingScript != null)
        {
            ScenarioManager.instance.StartNewDialogueScript(startingScript);
        }
    }
}


