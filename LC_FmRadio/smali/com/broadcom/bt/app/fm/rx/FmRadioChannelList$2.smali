.class Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;
.super Ljava/lang/Object;
.source "FmRadioChannelList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 113
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "FmRadioChannelList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$000(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 119
    .local v0, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    const-string v1, "frequency"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v3, 0x42c8

    mul-float/2addr v1, v3

    float-to-int v1, v1

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I
    invoke-static {v2, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$102(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;I)I

    .line 120
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$300(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "current_freq"

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$300(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mSelectedFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)I

    move-result v2

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->mCurrentFreq:I
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$202(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;I)I

    .line 123
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->prepareData()V
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadioChannelList;)V

    .line 124
    return-void
.end method
