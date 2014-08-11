.class Lcom/android/internal/telephony/cat/RefreshParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field fileList:[B

.field numFiles:I

.field refMode:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;II[B)V
    .locals 1
    .parameter "cmdDet"
    .parameter "refMode"
    .parameter "numFiles"
    .parameter "fileList"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/RefreshParams;->numFiles:I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RefreshParams;->fileList:[B

    .line 192
    iput p2, p0, Lcom/android/internal/telephony/cat/RefreshParams;->refMode:I

    .line 193
    iput p3, p0, Lcom/android/internal/telephony/cat/RefreshParams;->numFiles:I

    .line 194
    iput-object p4, p0, Lcom/android/internal/telephony/cat/RefreshParams;->fileList:[B

    .line 195
    return-void
.end method
