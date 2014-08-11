.class Lcom/broadcom/bt/app/fm/FMTestService$1;
.super Lcom/broadcom/bt/app/fm/IFMTestService$Stub;
.source "FMTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/FMTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/FMTestService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/FMTestService;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/IFMTestService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public init(I)Z
    .locals 4
    .parameter "initFreq"

    .prologue
    const/4 v3, 0x1

    .line 162
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/FMTestService;->access$100(Lcom/broadcom/bt/app/fm/FMTestService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMTestService:init "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #setter for: Lcom/broadcom/bt/app/fm/FMTestService;->status:I
    invoke-static {v1, v3}, Lcom/broadcom/bt/app/fm/FMTestService;->access$202(Lcom/broadcom/bt/app/fm/FMTestService;I)I

    .line 164
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #setter for: Lcom/broadcom/bt/app/fm/FMTestService;->initFreq:I
    invoke-static {v1, p1}, Lcom/broadcom/bt/app/fm/FMTestService;->access$302(Lcom/broadcom/bt/app/fm/FMTestService;I)I

    .line 165
    new-instance v0, Lcom/broadcom/bt/app/fm/FMTestService$1$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/FMTestService$1$1;-><init>(Lcom/broadcom/bt/app/fm/FMTestService$1;)V

    .line 175
    .local v0, t1:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    return v3
.end method

.method public tuneRadio(I)I
    .locals 3
    .parameter "freq"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/FMTestService;->access$000(Lcom/broadcom/bt/app/fm/FMTestService;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/FMTestService;->access$100(Lcom/broadcom/bt/app/fm/FMTestService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tuneRadio:freq= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->status:I
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/FMTestService;->access$200(Lcom/broadcom/bt/app/fm/FMTestService;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/FMTestService;->access$000(Lcom/broadcom/bt/app/fm/FMTestService;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v1

    #setter for: Lcom/broadcom/bt/app/fm/FMTestService;->status:I
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/FMTestService;->access$202(Lcom/broadcom/bt/app/fm/FMTestService;I)I

    .line 151
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/FMTestService;->access$100(Lcom/broadcom/bt/app/fm/FMTestService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turn on radio status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->status:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/FMTestService;->access$200(Lcom/broadcom/bt/app/fm/FMTestService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/FMTestService$1;->this$0:Lcom/broadcom/bt/app/fm/FMTestService;

    #getter for: Lcom/broadcom/bt/app/fm/FMTestService;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/FMTestService;->access$000(Lcom/broadcom/bt/app/fm/FMTestService;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiver;->tuneRadio(I)I

    move-result v0

    goto :goto_0
.end method
