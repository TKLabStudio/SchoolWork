using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Camera_control : MonoBehaviour
{
    Vector3 offset;
    public GameObject track_object;
    // Start is called before the first frame update
    void Start()
    {
        offset = gameObject.transform.position - track_object.transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        gameObject.transform.position = track_object.transform.position + offset;
    }
}
