.class Lcom/broadcom/bt/app/fm/rx/FmReceiveView$4;
.super Ljava/lang/Object;
.source "FmReceiveView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTuneStationFrequencyTV:Lcom/broadcom/bt/app/fm/drag/DragTextView;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->access$200(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)Lcom/broadcom/bt/app/fm/drag/DragTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mPresetButtonAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->access$100(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/drag/DragTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 612
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mTuneStationFrequencyTV:Lcom/broadcom/bt/app/fm/drag/DragTextView;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->access$200(Lcom/broadcom/bt/app/fm/rx/FmReceiveView;)Lcom/broadcom/bt/app/fm/drag/DragTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/drag/DragTextView;->startDrag()V

    .line 613
    const/4 v0, 0x1

    return v0
.end method
