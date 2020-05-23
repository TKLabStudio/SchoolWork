using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Score_add : MonoBehaviour
{
  
    Text Score_text;
    // Start is called before the first frame update
    void Start()
    {
        Score_text = GetComponent<Text>();
    }

    // Update is called once per frame
    void Update()
    {
        Score_text.text = "Score: "+ Player_control.score.ToString();
    }
}
