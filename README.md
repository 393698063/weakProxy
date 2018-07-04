# weakProxy

### 用来打破应用中的循环引用

### 使用实例
```objc
#import "MyProxy"
self.timer = [NSTimer scheduledTimerWithTimeInterval:0.5
                                            target:[MyProxy proxyWithTarget:self]
                                            selector:@selector(test)
                                            userInfo:nil
                                            repeats:YES];
```

