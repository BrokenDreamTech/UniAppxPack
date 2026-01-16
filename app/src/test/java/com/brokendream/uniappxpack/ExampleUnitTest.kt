package com.brokendream.uniappxpack

import org.junit.Test

import org.junit.Assert.*
import java.io.File

/**
 * Example local unit test, which will execute on the development machine (host).
 *
 * See [testing documentation](http://d.android.com/tools/testing).
 */
class ExampleUnitTest {
    @Test
    fun addition_isCorrect() {
        assertEquals(4, 2 + 2)
    }
    @Test
    fun printLibsFiles() {
        val libsDir = File("./libs/")
        println(libsDir.absolutePath)

        if (libsDir.exists() && libsDir.isDirectory) {
            val files = libsDir.listFiles()
            if (files != null) {
                println("Files in app/libs:")
                files.forEach { file ->
                    println("""
                        "${file.name}",
                    """.trimIndent())
                }
            } else {
                println("No files found or directory is empty")
            }
        } else {
            println("app/libs directory does not exist")
        }
    }
}