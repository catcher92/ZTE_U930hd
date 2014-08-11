.class Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$1;
.super Ljava/lang/Object;
.source "FmRadioChannelList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 93
    const-string v3, "FmRadioChannelList"

    const-string v4, "onCreateContextMenu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_1

    .line 95
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 97
    .local v2, position:I
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->data:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$000(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 98
    .local v0, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    const-string v3, "frequency"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v5, 0x42c8

    mul-float/2addr v3, v5

    float-to-int v3, v3

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I
    invoke-static {v4, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$102(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;I)I

    .line 100
    const-string v3, "FmRadioChannelList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateContextMenu mSelectedFreq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I
    invoke-static {v5}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v3, "FmRadioChannelList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateContextMenu mCurrentFreq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mCurrentFreq:I
    invoke-static {v5}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$200(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 103
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)I

    move-result v3

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mCurrentFreq:I
    invoke-static {v4}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$200(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 104
    const v3, 0x7f090086

    invoke-interface {p1, v6, v6, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 107
    :cond_0
    const/4 v3, 0x2

    const v4, 0x7f09007f

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 109
    const/4 v3, 0x1

    const v4, 0x7f090087

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 111
    .end local v0           #item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #position:I
    :cond_1
    return-void
.end method
