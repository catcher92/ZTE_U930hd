.class Lcom/android/phone/FdnList$1;
.super Ljava/lang/Object;
.source "FdnList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FdnList;->showOperationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnList;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnList;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/phone/FdnList$1;->this$0:Lcom/android/phone/FdnList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "subItem"

    .prologue
    .line 158
    const-string v0, "FdnList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selectPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FdnList$1;->this$0:Lcom/android/phone/FdnList;

    #getter for: Lcom/android/phone/FdnList;->selectPosition:I
    invoke-static {v2}, Lcom/android/phone/FdnList;->access$000(Lcom/android/phone/FdnList;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    packed-switch p2, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/FdnList$1;->this$0:Lcom/android/phone/FdnList;

    iget-object v1, p0, Lcom/android/phone/FdnList$1;->this$0:Lcom/android/phone/FdnList;

    #getter for: Lcom/android/phone/FdnList;->selectPosition:I
    invoke-static {v1}, Lcom/android/phone/FdnList;->access$000(Lcom/android/phone/FdnList;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/FdnList;->phoneCall(I)V

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/FdnList$1;->this$0:Lcom/android/phone/FdnList;

    #calls: Lcom/android/phone/FdnList;->addContact()V
    invoke-static {v0}, Lcom/android/phone/FdnList;->access$100(Lcom/android/phone/FdnList;)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/FdnList$1;->this$0:Lcom/android/phone/FdnList;

    iget-object v1, p0, Lcom/android/phone/FdnList$1;->this$0:Lcom/android/phone/FdnList;

    #getter for: Lcom/android/phone/FdnList;->selectPosition:I
    invoke-static {v1}, Lcom/android/phone/FdnList;->access$000(Lcom/android/phone/FdnList;)I

    move-result v1

    #calls: Lcom/android/phone/FdnList;->editSelected(I)V
    invoke-static {v0, v1}, Lcom/android/phone/FdnList;->access$200(Lcom/android/phone/FdnList;I)V

    goto :goto_0

    .line 174
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/FdnList$1;->this$0:Lcom/android/phone/FdnList;

    iget-object v1, p0, Lcom/android/phone/FdnList$1;->this$0:Lcom/android/phone/FdnList;

    #getter for: Lcom/android/phone/FdnList;->selectPosition:I
    invoke-static {v1}, Lcom/android/phone/FdnList;->access$000(Lcom/android/phone/FdnList;)I

    move-result v1

    #calls: Lcom/android/phone/FdnList;->deleteSelected(I)V
    invoke-static {v0, v1}, Lcom/android/phone/FdnList;->access$300(Lcom/android/phone/FdnList;I)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
