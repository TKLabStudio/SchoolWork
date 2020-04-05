using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class door_pass : MonoBehaviour
{
    void OnCollisionEnter2D(Collision2D collision_target)
    {
        if (collision_target.gameObject.CompareTag("UFO")) //假如被碰撞物是被標示stone標籤的物件
        {
            sound_manager.playsound();
            Destroy(collision_target.gameObject);
                SceneManager.LoadScene("Scene_2");
                Debug.Log("進入第2關....!");
        }
    }
}