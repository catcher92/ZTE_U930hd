.class Lcom/android/phone/SpeedDialList$1;
.super Ljava/lang/Object;
.source "SpeedDialList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SpeedDialList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SpeedDialList;


# direct methods
.method constructor <init>(Lcom/android/phone/SpeedDialList;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/phone/SpeedDialList$1;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "Thread run........."

    #calls: Lcom/android/phone/SpeedDialList;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/SpeedDialList;->access$000(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/phone/SpeedDialList$1;->this$0:Lcom/android/phone/SpeedDialList;

    invoke-virtual {v0}, Lcom/android/phone/SpeedDialList;->setView()V

    .line 121
    return-void
.end method
