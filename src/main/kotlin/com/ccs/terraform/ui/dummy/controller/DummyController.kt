package com.ccs.terraform.ui.dummy.controller

import com.ccs.terraform.ui.dummy.service.DummyService
import org.springframework.http.MediaType
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping

@Controller
@RequestMapping("/dummy")
class DummyController(private val dummyService: DummyService) {

    @GetMapping(produces = [MediaType.TEXT_HTML_VALUE])
    fun dummyPage(model: Model): String {
        model.addAttribute("dummy", dummyService.getDummy())
        return "dummy"
    }
}
