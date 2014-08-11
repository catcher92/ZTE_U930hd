.class Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;
.super Landroid/os/Handler;
.source "GsmUmtsAddLocalNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsAddLocalNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;


# direct methods
.method private constructor <init>(Lcom/android/phone/GsmUmtsAddLocalNumber;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/GsmUmtsAddLocalNumber;Lcom/android/phone/GsmUmtsAddLocalNumber$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;-><init>(Lcom/android/phone/GsmUmtsAddLocalNumber;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 266
    const-string v0, "GsmUmtsAddLocalNumber"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$ handleMessage ,what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 269
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #calls: Lcom/android/phone/GsmUmtsAddLocalNumber;->handleSetLine1NumberResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$800(Lcom/android/phone/GsmUmtsAddLocalNumber;Landroid/os/Message;)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAddLocalNumber$MyHandler;->this$0:Lcom/android/phone/GsmUmtsAddLocalNumber;

    #calls: Lcom/android/phone/GsmUmtsAddLocalNumber;->handleSetLine1NameResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/GsmUmtsAddLocalNumber;->access$900(Lcom/android/phone/GsmUmtsAddLocalNumber;Landroid/os/Message;)V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
