using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BlurBackground : MonoBehaviour
{
    Material material;

    [SerializeField]
    float blurSize =  1.5f;

    public bool isBlur = false;
    // Start is called before the first frame update
    void Start()
    {
        material =  GetComponent<Image>().material;
        material.SetFloat("_Size", 0);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void StartBlur()
    {
        StartCoroutine(StartBlurring());
    }

    public void EndBlur()
    {
        StartCoroutine(EndBlurring());
    }

    IEnumerator StartBlurring()
    {
        float size = 0.1f;
        while (material.GetFloat("_Size") <= blurSize)
        {
            material.SetFloat("_Size", size);
            size += 0.1f;
            yield return new WaitForSeconds(0.05f);
        }

        isBlur = true;
    }

    IEnumerator EndBlurring()
    {
        float size = blurSize;
        while (material.GetFloat("_Size") > 0)
        {
            material.SetFloat("_Size", size);
            size -= 0.1f;
            yield return new WaitForSeconds(0.05f);
        }

        isBlur = false;
    }
}
