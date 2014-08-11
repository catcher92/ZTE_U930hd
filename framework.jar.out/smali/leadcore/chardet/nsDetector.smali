.class public Lleadcore/chardet/nsDetector;
.super Lleadcore/chardet/nsPSMDetector;
.source "nsDetector.java"

# interfaces
.implements Lleadcore/chardet/nsICharsetDetector;


# instance fields
.field mObserver:Lleadcore/chardet/nsICharsetDetectionObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lleadcore/chardet/nsPSMDetector;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lleadcore/chardet/nsDetector;->mObserver:Lleadcore/chardet/nsICharsetDetectionObserver;

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "langFlag"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lleadcore/chardet/nsPSMDetector;-><init>(I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lleadcore/chardet/nsDetector;->mObserver:Lleadcore/chardet/nsICharsetDetectionObserver;

    .line 50
    return-void
.end method


# virtual methods
.method public DoIt([BIZ)Z
    .locals 1
    .parameter "aBuf"
    .parameter "aLen"
    .parameter "oDontFeedMe"

    .prologue
    .line 61
    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    .line 64
    :cond_1
    invoke-virtual {p0, p1, p2}, Lleadcore/chardet/nsDetector;->HandleData([BI)Z

    .line 65
    iget-boolean v0, p0, Lleadcore/chardet/nsPSMDetector;->mDone:Z

    goto :goto_0
.end method

.method public Done()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lleadcore/chardet/nsDetector;->DataEnd()V

    .line 70
    return-void
.end method

.method public Init(Lleadcore/chardet/nsICharsetDetectionObserver;)V
    .locals 0
    .parameter "aObserver"

    .prologue
    .line 54
    iput-object p1, p0, Lleadcore/chardet/nsDetector;->mObserver:Lleadcore/chardet/nsICharsetDetectionObserver;

    .line 55
    return-void
.end method

.method public Report(Ljava/lang/String;)V
    .locals 1
    .parameter "charset"

    .prologue
    .line 74
    iget-object v0, p0, Lleadcore/chardet/nsDetector;->mObserver:Lleadcore/chardet/nsICharsetDetectionObserver;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lleadcore/chardet/nsDetector;->mObserver:Lleadcore/chardet/nsICharsetDetectionObserver;

    invoke-interface {v0, p1}, Lleadcore/chardet/nsICharsetDetectionObserver;->Notify(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public isAscii([BI)Z
    .locals 2
    .parameter "aBuf"
    .parameter "aLen"

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 81
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 85
    :goto_1
    return v1

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
