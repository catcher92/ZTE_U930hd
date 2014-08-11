.class Lcom/android/phone/SimContactsService$NamePhoneTypePair;
.super Ljava/lang/Object;
.source "SimContactsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContactsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamePhoneTypePair"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final phoneType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "nameWithPhoneType"

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/SimContactsService$NamePhoneTypePair;->phoneType:I

    .line 166
    iput-object p1, p0, Lcom/android/phone/SimContactsService$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 167
    return-void
.end method
