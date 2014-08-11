.class Lcom/android/phone/EditFdnContactScreen$2;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$2;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 159
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 160
    .local v1, spb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-nez v1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getMaxLengthOf(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$102(I)I

    .line 163
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getMaxLengthOf(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$202(I)I

    .line 165
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$2;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/phone/EditFdnContactScreen$2$1;

    invoke-direct {v5, p0}, Lcom/android/phone/EditFdnContactScreen$2$1;-><init>(Lcom/android/phone/EditFdnContactScreen$2;)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 179
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$2;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/phone/EditFdnContactScreen$2$2;

    invoke-direct {v5, p0}, Lcom/android/phone/EditFdnContactScreen$2$2;-><init>(Lcom/android/phone/EditFdnContactScreen$2;)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "PhoneApp"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
