.class Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "FmRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2998
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->updatePhoneState(I)V
    invoke-static {v0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3000(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V

    .line 3001
    return-void
.end method
