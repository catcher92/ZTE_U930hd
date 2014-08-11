.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;
.super Ljava/lang/Thread;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field final synthetic val$function:Ljava/lang/String;

.field final synthetic val$makeDefault:Z


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->val$function:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->val$makeDefault:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->val$function:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->val$makeDefault:Z

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Ljava/lang/String;Z)V

    .line 547
    return-void
.end method
