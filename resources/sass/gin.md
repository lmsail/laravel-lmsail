https://gin-gonic.com/zh-cn/docs/examples/param-in-path/

# safe.go 加密解密包

```
package helps

import (
	"crypto/md5"
	"crypto/sha1"
	"encoding/base64"
	"fmt"
)

/**
    MD5 加密
    eg: EncryptMd5("123456")
*/
func EncryptMd5(key string) string {
	hash := md5.Sum([]byte(key))
	return fmt.Sprintf("%x", hash)
}

/**
    sha1 加密
    eg: EncryptSha1("123456")
*/
func EncryptSha1(key string) string {
	h := sha1.New()
	h.Write([]byte(key))
	return fmt.Sprintf("%x", h.Sum(nil))
}

/**
    base64 编码
    @params  way: 编码方式  url|url编码方式。other|字符串编码方式
    eg: EncryptBase64("http://www.lmsail,com", "url")
*/
func EncryptBase64(key string, way string) string {
	if way == "url" {
		return base64.URLEncoding.EncodeToString([]byte(key))
	} else {
		return base64.StdEncoding.EncodeToString([]byte(key))
	}
}

/**
    base64 解码
    @params  way: 解码方式  url|url解码方式。other|字符串解码方式
    @return  解码结果，错误信息
    eg: DecryptBase64("http://www.lmsail,com", "url")
*/
func DecryptBase64(key string, way string) (result string, err error) {
	if way == "url" {
		result, err := base64.URLEncoding.DecodeString(key)
		return string(result), err
	} else {
		result, err := base64.StdEncoding.DecodeString(key)
		return string(result), err
	}
}

```

# rsa_key.go 生成公钥和私钥

```
package helps

import (
	"crypto/rand"
	"crypto/rsa"
	"crypto/x509"
	"encoding/pem"
	"flag"
	"log"
	"os"
)

func init() {
	// 检测文件夹是否存在，存在则已经生成，否则不再生成
	exist, _ := PathExists("./pem")
	if !exist {
		var bits int
		_ = os.Mkdir("./pem", os.ModePerm)
		flag.IntVar(&bits, "b", 1024, "密钥长度，默认为1024位")
		if err := GenRsaKey(bits); err != nil {
			log.Fatal("密钥文件生成失败！")
		}
		log.Println("密钥文件生成成功！")
	}
}

func PathExists(path string) (bool, error) {
	_, err := os.Stat(path)
	if err == nil {
		return true, nil
	}
	if os.IsNotExist(err) {
		return false, nil
	}
	return false, err
}

func GenRsaKey(bits int) error {
	// 生成私钥文件
	privateKey, err := rsa.GenerateKey(rand.Reader, bits)
	if err != nil {
		return err
	}
	derStream := x509.MarshalPKCS1PrivateKey(privateKey)
	block := &pem.Block{
		Type:  "RSA PRIVATE KEY",
		Bytes: derStream,
	}

	privFile, err := os.Create("./pem/private.pem")
	if err != nil {
		return err
	}
	defer privFile.Close()

	err = pem.Encode(privFile, block)
	if err != nil {
		return err
	}
	// 生成公钥文件
	publicKey := &privateKey.PublicKey
	derPkix, err := x509.MarshalPKIXPublicKey(publicKey)
	if err != nil {
		return err
	}
	block = &pem.Block{
		Type:  "PUBLIC KEY",
		Bytes: derPkix,
	}
	pubFile, err := os.Create("./pem/public.pem")
	if err != nil {
		return err
	}
	defer pubFile.Close()
	err = pem.Encode(pubFile, block)
	if err != nil {
		return err
	}
	return nil
}
```

# rsa.go 加密解密文件

```
package helps

import (
	"crypto/rand"
	"crypto/rsa"
	"crypto/x509"
	"encoding/pem"
	"errors"
	"io/ioutil"
)

var (
	privateKey = []byte(``)
	publicKey  = []byte(``)
)

/**
	用法
	加密（加密后对加密结果进行base64编码）：
		result1, err := helps.RsaEncrypt([]byte("polaris@studygolang.com"))
		base64Result := helps.EncryptBase64(string(result1), "")
		fmt.Println(base64Result)

	解密（base64转码后解密）：
		data, _ := helps.DecryptBase64(base64Result, "")
		result2, _ := helps.RsaDecrypt([]byte(data))
		fmt.Println(string(result))
*/

func init() {
	// 读取私钥
	private, _ := ioutil.ReadFile("./pem/private.pem")
	privateKey = private

	// 读取公钥
	public, _ := ioutil.ReadFile("./pem/public.pem")
	publicKey = public
}

// 加密
func RsaEncrypt(origData []byte) ([]byte, error) {
	block, _ := pem.Decode(publicKey)
	if block == nil {
		return nil, errors.New("public key error")
	}
	pubInterface, err := x509.ParsePKIXPublicKey(block.Bytes)
	if err != nil {
		return nil, err
	}
	pub := pubInterface.(*rsa.PublicKey)
	return rsa.EncryptPKCS1v15(rand.Reader, pub, origData)
}

// 解密
func RsaDecrypt(ciphertext []byte) ([]byte, error) {
	block, _ := pem.Decode(privateKey)
	if block == nil {
		return nil, errors.New("private key error!")
	}
	priv, err := x509.ParsePKCS1PrivateKey(block.Bytes)
	if err != nil {
		return nil, err
	}
	return rsa.DecryptPKCS1v15(rand.Reader, priv, ciphertext)
}
```