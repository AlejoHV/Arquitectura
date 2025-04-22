#include <jni.h>
#include "libcalculadora_JavaCalculadora.h"

#ifndef _Included_libcalculadora_JavaCalculadora
#define _Included_libcalculadora_JavaCalculadora
#ifdef __cplusplus
extern "C" {
#endif

/*
 * Class:     libcalculadora_JavaCalculadora
 * Method:    sumar
 * Signature: (II)I
 */
JNIEXPORT jint JNICALL Java_libcalculadora_JavaCalculadora_sumar
  (JNIEnv * env, jobject obj, jint num1, jint num2){
  int numero1;
  int numero2;
  numero1=num1;
  numero2=num2;
  return numero1+numero2;
}

/*
 * Class:     libcalculadora_JavaCalculadora
 * Method:    restar
 * Signature: (II)I
 */
JNIEXPORT jint JNICALL Java_libcalculadora_JavaCalculadora_restar
  (JNIEnv * env, jobject obj, jint num1, jint num2){
  int numero1;
  int numero2;
  numero1=num1;
  numero2=num2;
  return numero1-numero2;
}

/*
 * Class:     libcalculadora_JavaCalculadora
 * Method:    mul
 * Signature: (II)I
 */
JNIEXPORT jint JNICALL Java_libcalculadora_JavaCalculadora_mul
  (JNIEnv * env, jobject obj, jint num1, jint num2){
  int numero1;
  int numero2;
  numero1=num1;
  numero2=num2;
  return numero1*numero2;
}

/*
 * Class:     libcalculadora_JavaCalculadora
 * Method:    div
 * Signature: (II)I
 */
JNIEXPORT jint JNICALL Java_libcalculadora_JavaCalculadora_div
  (JNIEnv * env, jobject obj, jint num1, jint num2){
  int numero1;
  int numero2;
  numero1=num1;
  numero2=num2;
  return(float) (numero1/numero2);
}

#ifdef __cplusplus
}
#endif
#endif
