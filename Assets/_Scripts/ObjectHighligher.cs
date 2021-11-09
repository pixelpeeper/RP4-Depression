using cakeslice;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectHighligher : MonoBehaviour
{
    public bool selected = false;
    [SerializeField]
    private List<Outline> highlights;


    public void DisplayHighlight()
    {
        for (int i = 0; i < this.highlights.Count; i++)
        {
            this.highlights[i].eraseRenderer = false;
        }
    }

    public void HideHighlight()
    {
        for (int i = 0; i < this.highlights.Count; i++)
        {
            this.highlights[i].eraseRenderer = true;
        }
    }

}
