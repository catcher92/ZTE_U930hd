.class Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;
.super Lcom/android/phone/FacilityLockCmd;
.source "PhoneRestrictSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRestrictSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangePasswordCmd"
.end annotation


# instance fields
.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mSetIndex:I

.field final synthetic this$0:Lcom/android/phone/PhoneRestrictSetting;

.field final unitCount:I

.field final units:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneRestrictSetting;Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    .line 196
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p2, v0, v1}, Lcom/android/phone/FacilityLockCmd;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iput v2, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    .line 181
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AO"

    aput-object v1, v0, v2

    const-string v1, "OI"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "OX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AB"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->units:[Ljava/lang/String;

    .line 191
    iput v3, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->unitCount:I

    .line 197
    return-void
.end method

.method private ChangeItemPassword(Ljava/lang/String;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 212
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "ChangeItemPassword in "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/phone/FacilityLockCmd;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mOldPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->GetMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 214
    return-void
.end method

.method private OnSetOver()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    .line 228
    return-void
.end method

.method private SetNextItemPassword()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "SetNextItemPassword  in "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "SetNextItemPassword  in 2 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->units:[Ljava/lang/String;

    iget v1, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->ChangeItemPassword(Ljava/lang/String;)V

    .line 222
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "SetNextItemPassword  in  3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method


# virtual methods
.method DoSetProc()I
    .locals 3

    .prologue
    .line 251
    const-string v0, "FacilityLockCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change Password from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->SetNextItemPassword()V

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method protected OnSetResult(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 233
    const-string v0, "PhoneRestrictSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnSetResult cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/FacilityLockCmd;->mCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    .line 235
    iget v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mSetIndex:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 237
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "OnSetResult cmd = mSetIndex >= unitCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->OnSetOver()V

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    const-string v0, "PhoneRestrictSetting"

    const-string v1, "OnSetResult cmd = mSetIndex >= unitCount--no--"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->SetNextItemPassword()V

    .line 244
    iget-object v0, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->this$0:Lcom/android/phone/PhoneRestrictSetting;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneRestrictSetting;->ShowMyDialog(I)V

    goto :goto_0
.end method

.method public SetNewPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mNewPassword:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public SetOldPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/phone/PhoneRestrictSetting$ChangePasswordCmd;->mOldPassword:Ljava/lang/String;

    .line 202
    return-void
.end method
