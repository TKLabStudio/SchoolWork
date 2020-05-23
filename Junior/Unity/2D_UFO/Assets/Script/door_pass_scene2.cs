using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class door_pass_scene2 : MonoBehaviour
{
    // Start is called before the first frame update
    void OnCollisionEnter2D(Collision2D collision_target)
    {
        if (collision_target.gameObject.CompareTag("UFO"))
        {
            Sound_Manager.playSound1();
            Destroy(collision_target.gameObject);
            SceneManager.LoadScene("Scene_3");
        }
    }
}
