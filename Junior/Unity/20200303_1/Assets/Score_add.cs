using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Score_add : MonoBehaviour
{
    Text textScore;
    // Use this for initialization
    void Start()
    {
        textScore = GetComponent<Text>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        textScore.text = "Score: " + Player_control.score.ToString();
    }
}