using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeColor : MonoBehaviour
{

    Color originColor;
    Material _material;
    
    //[SerializeField]
    public float fadingSpeed = 0.05f;

    //[SerializeField]
    //Color targetColor;
    public Color[] ColorList = { new Color(60, 95, 127, 1), new Color(107, 93, 126, 1), new Color(183, 109, 134, 1), new Color(229, 115, 128, 1), new Color(240, 178, 146, 1), new Color(240, 221, 146) };

    //public Material _material;
    public int interpolationFramesCount = 45; // Number of frames to completely interpolate between the 2 positions
    int elapsedFrames = 0;

    // Start is called before the first frame update
    void Start()
    {
        _material = GetComponent<Renderer>().material;
        originColor = _material.color;
    }

    // Update is called once per frame
    void Update()
    {
        /*
        if (Input.GetKeyDown(KeyCode.Space))
        {
            StartCoroutine(StartFading());
        }*/
    }

    public IEnumerator NPCfading(int npcStaus)
    {
        float interpolationRatio;

        Color targetColor = ColorList[npcStaus];

        while (_material.color != targetColor)
        {
            interpolationRatio = (float)elapsedFrames / interpolationFramesCount;
            _material.SetColor("_Color", Color.Lerp(originColor, targetColor, interpolationRatio));
            elapsedFrames = (elapsedFrames + 1) % (interpolationFramesCount + 1);
            yield return new WaitForSeconds(fadingSpeed);
        }
    }

    IEnumerator StartFading()
    {

        float interpolationRatio;
        /*
        while ( _material.color != targetColor)
        {
            interpolationRatio = (float)elapsedFrames / interpolationFramesCount;
            _material.SetColor("_Color" ,Color.Lerp(originColor, targetColor, interpolationRatio));
            elapsedFrames = (elapsedFrames + 1) % (interpolationFramesCount + 1);
            yield return new WaitForSeconds(fadingSpeed);
        }
        */
        interpolationFramesCount = interpolationFramesCount / ColorList.Length;

        for(int i = 0; i < ColorList.Length; i++)
        {
            if (i != 0)
            {
                originColor = ColorList[i - 1];
            }
            Color targetColor = ColorList[i];

            while (_material.color != targetColor)
            {
                interpolationRatio = (float)elapsedFrames / interpolationFramesCount;
                _material.SetColor("_Color", Color.Lerp(originColor, targetColor, interpolationRatio));
                elapsedFrames = (elapsedFrames + 1) % (interpolationFramesCount + 1);
                yield return new WaitForSeconds(fadingSpeed);
            }
        }
    }

        
}
