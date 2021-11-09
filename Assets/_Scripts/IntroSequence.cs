using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IntroSequence : MonoBehaviour
{
    [SerializeField]
    private DialogueScript introScript;

    // Start is called before the first frame update
    void Start()
    {
        VistaManager.instance.TriggerVista(3, introScript);

        ScenarioManager.instance.scenarioEnded += this.SetupInitialGameState;
    }


    private void SetupInitialGameState()
    {
        ScenarioManager.instance.scenarioEnded -= this.SetupInitialGameState;
        ScenarioManager.instance.SetupInitialGameState();
    }
}
