package com.ccs.terraform.ui.dummy.repository

import com.ccs.terraform.ui.dummy.model.Dummy
import org.springframework.stereotype.Repository
import java.util.concurrent.atomic.AtomicReference

@Repository
class DummyRepository {
    private val dummyRef = AtomicReference(Dummy("world"))

    fun getDummy(): Dummy {
        return dummyRef.get()
    }

    fun saveDummy(newDummy: Dummy): Dummy {
        dummyRef.set(newDummy)
        return newDummy
    }

    fun resetDummy(): Dummy {
        val defaultDummy = Dummy("world")
        dummyRef.set(defaultDummy)
        return defaultDummy
    }
}
